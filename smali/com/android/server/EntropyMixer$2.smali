.class Lcom/android/server/EntropyMixer$2;
.super Landroid/content/BroadcastReceiver;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method constructor <init>(Lcom/android/server/EntropyMixer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/EntropyMixer;

    .line 89
    iput-object p1, p0, Lcom/android/server/EntropyMixer$2;->this$0:Lcom/android/server/EntropyMixer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/server/EntropyMixer$2;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {v0}, Lcom/android/server/EntropyMixer;->access$100(Lcom/android/server/EntropyMixer;)V

    .line 93
    return-void
.end method
