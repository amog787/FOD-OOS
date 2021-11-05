.class Lcom/android/server/wm/LockTaskController$LockTaskToken;
.super Landroid/os/Binder;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LockTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LockTaskToken"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 954
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 955
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/LockTaskController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/LockTaskController$1;

    .line 953
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController$LockTaskToken;-><init>()V

    return-void
.end method
