.class public final synthetic Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/power/ThermalManagerService;

.field private final synthetic f$1:Landroid/os/IThermalStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;->f$0:Lcom/android/server/power/ThermalManagerService;

    iput-object p2, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;->f$1:Landroid/os/IThermalStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;->f$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v1, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ZPQKzo9ZjU-hL4QYH693hWuTqjk;->f$1:Landroid/os/IThermalStatusListener;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService;->lambda$postStatusListener$0$ThermalManagerService(Landroid/os/IThermalStatusListener;)V

    return-void
.end method
