.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenInfo"
.end annotation


# instance fields
.field final mDisplayId:I

.field final mToken:Landroid/os/Binder;


# direct methods
.method constructor <init>(Landroid/os/Binder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "displayId"    # I

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    .line 720
    iput p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    .line 721
    return-void
.end method
