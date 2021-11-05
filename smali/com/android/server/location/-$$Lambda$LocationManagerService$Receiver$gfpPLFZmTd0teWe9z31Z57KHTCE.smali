.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$Receiver$gfpPLFZmTd0teWe9z31Z57KHTCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService$Receiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Receiver$gfpPLFZmTd0teWe9z31Z57KHTCE;->f$0:Lcom/android/server/location/LocationManagerService$Receiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Receiver$gfpPLFZmTd0teWe9z31Z57KHTCE;->f$0:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$Receiver;->lambda$updateMonitoring$0$LocationManagerService$Receiver()V

    return-void
.end method
