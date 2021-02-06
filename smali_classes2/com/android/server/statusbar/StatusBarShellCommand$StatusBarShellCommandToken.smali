.class final Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;
.super Landroid/os/Binder;
.source "StatusBarShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatusBarShellCommandToken"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarShellCommand$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/statusbar/StatusBarShellCommand$1;

    .line 258
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;-><init>()V

    return-void
.end method
