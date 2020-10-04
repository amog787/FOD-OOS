.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$3$FRNc42I1SE4lD0XFYgIp8RCUXng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowManagerService$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$3$FRNc42I1SE4lD0XFYgIp8RCUXng;->f$0:Lcom/android/server/wm/WindowManagerService$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$3$FRNc42I1SE4lD0XFYgIp8RCUXng;->f$0:Lcom/android/server/wm/WindowManagerService$3;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$3;->lambda$dumpCritical$0$WindowManagerService$3()V

    return-void
.end method
