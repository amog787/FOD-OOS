.class Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScheduleDestroyArgs"
.end annotation


# instance fields
.field final mOwner:Lcom/android/server/wm/WindowProcessController;

.field final mReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/wm/WindowProcessController;

    .line 482
    iput-object p2, p0, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    .line 483
    return-void
.end method
