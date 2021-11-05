.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowInfo"
.end annotation


# instance fields
.field final mWindowHandle:I

.field final mWindowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "windowCookie"    # I

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowToken:Landroid/os/IBinder;

    .line 587
    iput p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I

    .line 588
    return-void
.end method
