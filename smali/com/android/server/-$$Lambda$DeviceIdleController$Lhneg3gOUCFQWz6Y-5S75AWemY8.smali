.class public final synthetic Lcom/android/server/-$$Lambda$DeviceIdleController$Lhneg3gOUCFQWz6Y-5S75AWemY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$DeviceIdleController$Lhneg3gOUCFQWz6Y-5S75AWemY8;->f$0:Lcom/android/server/DeviceIdleController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$DeviceIdleController$Lhneg3gOUCFQWz6Y-5S75AWemY8;->f$0:Lcom/android/server/DeviceIdleController;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->lambda$onBootPhase$0$DeviceIdleController(Landroid/os/PowerSaveState;)V

    return-void
.end method
