.class Lcom/android/server/audio/OpAudioMonitor$1;
.super Ljava/lang/Object;
.source "OpAudioMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/OpAudioMonitor;

.field final synthetic val$eventData:Ljava/util/Map;

.field final synthetic val$extraData:Ljava/util/Map;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/audio/OpAudioMonitor;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 138
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor$1;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iput-object p2, p0, Lcom/android/server/audio/OpAudioMonitor$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/audio/OpAudioMonitor$1;->val$eventData:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/server/audio/OpAudioMonitor$1;->val$extraData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logMdm run preserveOsData tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/OpAudioMonitor$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAudioMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/OpAudioMonitor$1;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v1}, Lcom/android/server/audio/OpAudioMonitor;->access$100(Lcom/android/server/audio/OpAudioMonitor;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/OpAudioMonitor$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/audio/OpAudioMonitor$1;->val$eventData:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/audio/OpAudioMonitor$1;->val$extraData:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 143
    return-void
.end method
