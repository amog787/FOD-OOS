.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$_tfpDlf3MkHSDi8MNIOlvGgvLS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_tfpDlf3MkHSDi8MNIOlvGgvLS8;->f$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_tfpDlf3MkHSDi8MNIOlvGgvLS8;->f$0:Lcom/android/server/wm/WindowManagerService;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$displayReady$6$WindowManagerService(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
