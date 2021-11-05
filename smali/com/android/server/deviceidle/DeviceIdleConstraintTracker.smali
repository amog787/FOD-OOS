.class public Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
.super Ljava/lang/Object;
.source "DeviceIdleConstraintTracker.java"


# instance fields
.field public active:Z

.field public final minState:I

.field public monitoring:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minState"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 54
    iput-object p1, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    .line 56
    return-void
.end method
