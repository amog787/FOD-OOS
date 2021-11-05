.class interface abstract Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySavingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InteractiveState"
.end annotation


# static fields
.field public static final BITS:I = 0x1

.field public static final INTERACTIVE:I = 0x1

.field public static final MASK:I = 0x1

.field public static final NON_INTERACTIVE:I = 0x0

.field public static final SHIFT:I = 0x2


# direct methods
.method public static fromIndex(I)I
    .locals 1
    .param p0, "index"    # I

    .line 77
    shr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
