//
//  Protocols.swift
//  
//
//  Created by Yehor Popovych on 05/07/2023.
//

import Foundation

public protocol SomeTuple0: OneTypeTuple, CodableTuple
    where STuple == ()
{
    init()
}
public extension SomeTuple0 {
    // TupleProtocol
    @inlinable init(_ t: STuple) { self.init() }
    @inlinable var tuple: STuple { () }
    @inlinable var anyArray: Array<Any> { [] }
    @inlinable var paramsDescription: String { "" }
    @inlinable static var count: Int { 0 }
    // OneTypeTuple
    @inlinable var array: Array<SType> { [] }
}

public protocol SomeTuple1<T1>: LinkedTuple, OneTypeTuple where
    STuple == (T1), SType == T1,
    DroppedFirst: SomeTuple0,
    DroppedLast: SomeTuple0,
    First == T1, Last == T1
{
    associatedtype T1
}
public extension SomeTuple1 {
    // TupleProtocol
    @inlinable var tuple: STuple { (first) }
    @inlinable var anyArray: Array<Any> { [first] }
    @inlinable static var count: Int { 1 }
    // OneTypeTuple
    @inlinable var array: Array<SType> { [first] }
    // LinkedTuple
    @inlinable init(first: DroppedLast, last: Last) { self.init(last) }
    @inlinable init(first: First, last: DroppedFirst) { self.init(first) }
    @inlinable var last: Last { first }
    @inlinable var dropLast: DroppedLast { DroppedLast() }
    @inlinable var dropFirst: DroppedFirst { DroppedFirst() }
}

public protocol SomeTuple2<T1, T2>: LinkedTuple where
    STuple == (T1, T2),
    DroppedFirst: SomeTuple1<T2>,
    DroppedLast: SomeTuple1<T1>,
    First == T1, Last == T2
{
    associatedtype T1; associatedtype T2
}
public extension SomeTuple2 {
    @inlinable static var count: Int { 2 }
}

public protocol SomeTuple3<T1, T2, T3>: LinkedTuple where
    STuple == (T1, T2, T3),
    DroppedFirst: SomeTuple2<T2, T3>,
    DroppedLast: SomeTuple2<T1, T2>,
    First == T1, Last == T3
{
    associatedtype T1; associatedtype T2; associatedtype T3
}
public extension SomeTuple3 {
    @inlinable static var count: Int { 3 }
}

public protocol SomeTuple4<T1, T2, T3, T4>: LinkedTuple where
    STuple == (T1, T2, T3, T4),
    DroppedFirst: SomeTuple3<T2, T3, T4>,
    DroppedLast: SomeTuple3<T1, T2, T3>,
    First == T1, Last == T4
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4
}
public extension SomeTuple4 {
    @inlinable static var count: Int { 4 }
}

public protocol SomeTuple5<T1, T2, T3, T4, T5>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5),
    DroppedFirst: SomeTuple4<T2, T3, T4, T5>,
    DroppedLast: SomeTuple4<T1, T2, T3, T4>,
    First == T1, Last == T5
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5
}
public extension SomeTuple5 {
    @inlinable static var count: Int { 5 }
}

public protocol SomeTuple6<T1, T2, T3, T4, T5, T6>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6),
    DroppedFirst: SomeTuple5<T2, T3, T4, T5, T6>,
    DroppedLast: SomeTuple5<T1, T2, T3, T4, T5>,
    First == T1, Last == T6
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
}
public extension SomeTuple6 {
    @inlinable static var count: Int { 6 }
}

public protocol SomeTuple7<T1, T2, T3, T4, T5, T6, T7>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6, T7),
    DroppedFirst: SomeTuple6<T2, T3, T4, T5, T6, T7>,
    DroppedLast: SomeTuple6<T1, T2, T3, T4, T5, T6>,
    First == T1, Last == T7
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7
}
public extension SomeTuple7 {
    @inlinable static var count: Int { 7 }
}

public protocol SomeTuple8<T1, T2, T3, T4, T5, T6, T7, T8>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8),
    DroppedFirst: SomeTuple7<T2, T3, T4, T5, T6, T7, T8>,
    DroppedLast: SomeTuple7<T1, T2, T3, T4, T5, T6, T7>,
    First == T1, Last == T8
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8
}
public extension SomeTuple8 {
    @inlinable static var count: Int { 8 }
}

public protocol SomeTuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8, T9),
    DroppedFirst: SomeTuple8<T2, T3, T4, T5, T6, T7, T8, T9>,
    DroppedLast: SomeTuple8<T1, T2, T3, T4, T5, T6, T7, T8>,
    First == T1, Last == T9
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8; associatedtype T9
}
public extension SomeTuple9 {
    @inlinable static var count: Int { 9 }
}

public protocol SomeTuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8, T9, T10),
    DroppedFirst: SomeTuple9<T2, T3, T4, T5, T6, T7, T8, T9, T10>,
    DroppedLast: SomeTuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>,
    First == T1, Last == T10
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8; associatedtype T9
    associatedtype T10
}
public extension SomeTuple10 {
    @inlinable static var count: Int { 10 }
}

public protocol SomeTuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>:
    LinkedTuple
where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11),
    DroppedFirst: SomeTuple10<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>,
    DroppedLast: SomeTuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>,
    First == T1, Last == T11
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8; associatedtype T9
    associatedtype T10; associatedtype T11
}
public extension SomeTuple11 {
    @inlinable static var count: Int { 11 }
}

public protocol SomeTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>:
    LinkedTuple
where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12),
    DroppedFirst: SomeTuple11<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>,
    DroppedLast: SomeTuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>,
    First == T1, Last == T12
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8; associatedtype T9
    associatedtype T10; associatedtype T11; associatedtype T12
}
public extension SomeTuple12 {
    @inlinable static var count: Int { 12 }
}

public protocol SomeTuple13<
    T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13
>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13),
    DroppedFirst: SomeTuple12<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>,
    DroppedLast: SomeTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>,
    First == T1, Last == T13
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8; associatedtype T9
    associatedtype T10; associatedtype T11; associatedtype T12
    associatedtype T13
}
public extension SomeTuple13 {
    @inlinable static var count: Int { 13 }
}

public protocol SomeTuple14<
    T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14
>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14),
    DroppedFirst:
        SomeTuple13<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>,
    DroppedLast:
        SomeTuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>,
    First == T1, Last == T14
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8; associatedtype T9
    associatedtype T10; associatedtype T11; associatedtype T12
    associatedtype T13; associatedtype T14
}
public extension SomeTuple14 {
    @inlinable static var count: Int { 14 }
}

public protocol SomeTuple15<
    T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15
>: LinkedTuple where
    STuple == (T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15),
    DroppedFirst:
        SomeTuple14<T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>,
    DroppedLast:
        SomeTuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>,
    First == T1, Last == T15
{
    associatedtype T1; associatedtype T2; associatedtype T3
    associatedtype T4; associatedtype T5; associatedtype T6
    associatedtype T7; associatedtype T8; associatedtype T9
    associatedtype T10; associatedtype T11; associatedtype T12
    associatedtype T13; associatedtype T14; associatedtype T15
}
public extension SomeTuple15 {
    @inlinable static var count: Int { 15 }
}
