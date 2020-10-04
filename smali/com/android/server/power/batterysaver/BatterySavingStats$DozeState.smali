.class interface abstract Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySavingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DozeState"
.end annotation


# static fields
.field public static final BITS:I = 0x2

.field public static final DEEP:I = 0x2

.field public static final LIGHT:I = 0x1

.field public static final MASK:I = 0x3

.field public static final NOT_DOZING:I = 0x0

.field public static final SHIFT:I = 0x3


# direct methods
.method public static fromIndex(I)I
    .locals 1
    .param p0, "index"    # I

    .line 92
    shr-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, 0x3

    return v0
.end method
