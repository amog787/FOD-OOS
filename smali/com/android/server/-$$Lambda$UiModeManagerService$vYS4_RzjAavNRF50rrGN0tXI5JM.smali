.class public final synthetic Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;->f$0:Lcom/android/server/UiModeManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;->f$0:Lcom/android/server/UiModeManagerService;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {v0, p1}, Lcom/android/server/UiModeManagerService;->lambda$onStart$0$UiModeManagerService(Landroid/os/PowerSaveState;)V

    return-void
.end method
