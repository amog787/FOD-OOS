.class Lcom/android/server/connectivity/FiveGStatusListener$2;
.super Ljava/lang/Object;
.source "FiveGStatusListener.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/FiveGStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/FiveGStatusListener;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/FiveGStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/FiveGStatusListener;

    .line 177
    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 211
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$602(Lcom/android/server/connectivity/FiveGStatusListener;Z)Z

    .line 213
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$302(Lcom/android/server/connectivity/FiveGStatusListener;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    .line 214
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$402(Lcom/android/server/connectivity/FiveGStatusListener;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    .line 215
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 201
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindingDied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener$2;->cleanup()V

    .line 203
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0}, Lcom/android/server/connectivity/FiveGStatusListener;->access$700(Lcom/android/server/connectivity/FiveGStatusListener;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 204
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "try to re-bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0}, Lcom/android/server/connectivity/FiveGStatusListener;->access$800(Lcom/android/server/connectivity/FiveGStatusListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x400

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    .line 206
    invoke-static {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->access$700(Lcom/android/server/connectivity/FiveGStatusListener;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 180
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {p2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$302(Lcom/android/server/connectivity/FiveGStatusListener;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    .line 184
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$300(Lcom/android/server/connectivity/FiveGStatusListener;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->access$500(Lcom/android/server/connectivity/FiveGStatusListener;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    iget-object v3, v3, Lcom/android/server/connectivity/FiveGStatusListener;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-interface {v1, v2, v3}, Lorg/codeaurora/internal/IExtTelephony;->registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$402(Lcom/android/server/connectivity/FiveGStatusListener;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    .line 185
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$602(Lcom/android/server/connectivity/FiveGStatusListener;Z)Z

    .line 186
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0}, Lcom/android/server/connectivity/FiveGStatusListener;->access$100(Lcom/android/server/connectivity/FiveGStatusListener;)V

    .line 187
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener$2;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v2}, Lcom/android/server/connectivity/FiveGStatusListener;->access$400(Lcom/android/server/connectivity/FiveGStatusListener;)Lorg/codeaurora/internal/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 195
    invoke-static {}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener$2;->cleanup()V

    .line 197
    return-void
.end method
