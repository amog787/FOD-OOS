.class public final synthetic Lcom/android/server/lights/-$$Lambda$LightsService$LightsManagerBinderService$8FmNnEggUQUk5aNo2TKU1g6SMDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/-$$Lambda$LightsService$LightsManagerBinderService$8FmNnEggUQUk5aNo2TKU1g6SMDA;->f$0:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    iput-object p2, p0, Lcom/android/server/lights/-$$Lambda$LightsService$LightsManagerBinderService$8FmNnEggUQUk5aNo2TKU1g6SMDA;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/lights/-$$Lambda$LightsService$LightsManagerBinderService$8FmNnEggUQUk5aNo2TKU1g6SMDA;->f$0:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    iget-object v1, p0, Lcom/android/server/lights/-$$Lambda$LightsService$LightsManagerBinderService$8FmNnEggUQUk5aNo2TKU1g6SMDA;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->lambda$openSession$0$LightsService$LightsManagerBinderService(Landroid/os/IBinder;)V

    return-void
.end method
