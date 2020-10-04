.class Lcom/google/android/startop/iorap/IorapForwardingService$1;
.super Ljava/lang/Object;
.source "IorapForwardingService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;->provideDeathRecipient()Landroid/os/IBinder$DeathRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/startop/iorap/IorapForwardingService;

    .line 115
    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$1;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 118
    const-string v0, "IorapForwardingService"

    const-string v1, "iorapd has died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$1;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$000(Lcom/google/android/startop/iorap/IorapForwardingService;I)Z

    .line 120
    return-void
.end method
