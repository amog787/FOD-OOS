.class Lcom/android/server/ThreadPriorityBooster$PriorityState;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThreadPriorityBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityState"
.end annotation


# instance fields
.field prevPriority:I

.field regionCounter:I

.field final tid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    .line 100
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ThreadPriorityBooster$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ThreadPriorityBooster$1;

    .line 87
    invoke-direct {p0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>()V

    return-void
.end method
