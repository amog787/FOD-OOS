.class final Lcom/android/server/lights/LightsService$LightsManagerBinderService;
.super Landroid/hardware/lights/ILightsManager$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightsManagerBinderService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    }
.end annotation


# instance fields
.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/hardware/lights/ILightsManager$Stub;-><init>()V

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # Lcom/android/server/lights/LightsService$1;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;)V

    return-void
.end method

.method private checkRequestIsValid([I)V
    .locals 5
    .param p1, "lightIds"    # [I

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    .line 249
    .local v1, "light":Lcom/android/server/lights/LightsService$LightImpl;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->access$100(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lightId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 247
    .end local v1    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private closeSessionInternal(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 237
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 238
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    .line 239
    .local v1, "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    if-eqz v1, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    .line 243
    .end local v1    # "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    :cond_0
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    iget-object v1, v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    return-object v1

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private invalidateLightStatesLocked()V
    .locals 6

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v0, "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/hardware/lights/LightState;>;"
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    iget-object v2, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 263
    .local v2, "requests":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/lights/LightState;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 264
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/LightState;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 261
    .end local v2    # "requests":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/lights/LightState;>;"
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 268
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightImpl;

    .line 269
    .local v2, "light":Lcom/android/server/lights/LightsService$LightImpl;
    invoke-static {v2}, Lcom/android/server/lights/LightsService$LightImpl;->access$100(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 270
    invoke-static {v2}, Lcom/android/server/lights/LightsService$LightImpl;->access$200(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v3

    iget v3, v3, Landroid/hardware/light/HwLight;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/LightState;

    .line 271
    .local v3, "state":Landroid/hardware/lights/LightState;
    if-eqz v3, :cond_2

    .line 272
    invoke-virtual {v3}, Landroid/hardware/lights/LightState;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/lights/LightsService$LightImpl;->setColor(I)V

    goto :goto_3

    .line 274
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    .line 267
    .end local v2    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    .end local v3    # "state":Landroid/hardware/lights/LightState;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    .end local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public closeSession(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 200
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string v2, "closeSession requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->closeSessionInternal(Landroid/os/IBinder;)V

    .line 204
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LightsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service: aidl ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    const-string v1, "Service: hidl"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    :goto_0
    const-string v1, "Lights:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightImpl;

    .line 220
    .local v2, "light":Lcom/android/server/lights/LightsService$LightImpl;
    const-string v6, "  Light id=%d ordinal=%d color=%08x"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 221
    invoke-static {v2}, Lcom/android/server/lights/LightsService$LightImpl;->access$200(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v8

    iget v8, v8, Landroid/hardware/light/HwLight;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v2}, Lcom/android/server/lights/LightsService$LightImpl;->access$200(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v4

    iget v4, v4, Landroid/hardware/light/HwLight;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v2}, Lcom/android/server/lights/LightsService$LightImpl;->access$300(Lcom/android/server/lights/LightsService$LightImpl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    .line 220
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .end local v2    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "i":I
    :cond_2
    const-string v1, "Session clients:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 226
    .local v2, "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Session token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget-object v7, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 228
    const-string v7, "    Request id=%d color=%08x"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 229
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 230
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/lights/LightState;

    invoke-virtual {v9}, Landroid/hardware/lights/LightState;->getColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    .line 228
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 232
    .end local v2    # "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    .end local v6    # "i":I
    :cond_3
    goto :goto_2

    .line 233
    :cond_4
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLightState(I)Landroid/hardware/lights/LightState;
    .locals 5
    .param p1, "lightId"    # I

    .line 168
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string v2, "getLightState(@TestApi) requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    .line 173
    .local v1, "light":Lcom/android/server/lights/LightsService$LightImpl;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->access$100(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    new-instance v2, Landroid/hardware/lights/LightState;

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->access$300(Lcom/android/server/lights/LightsService$LightImpl;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/hardware/lights/LightState;-><init>(I)V

    monitor-exit v0

    return-object v2

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid light: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .end local p1    # "lightId":I
    throw v2

    .line 177
    .end local v1    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    .restart local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .restart local p1    # "lightId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLights()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string v2, "getLights requires CONTROL_DEVICE_LIGHTS_PERMISSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 129
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "lights":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$LightImpl;->access$100(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$LightImpl;->access$200(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v3

    .line 133
    .local v3, "hwLight":Landroid/hardware/light/HwLight;
    new-instance v4, Landroid/hardware/lights/Light;

    iget v5, v3, Landroid/hardware/light/HwLight;->id:I

    iget v6, v3, Landroid/hardware/light/HwLight;->ordinal:I

    iget-byte v7, v3, Landroid/hardware/light/HwLight;->type:B

    invoke-direct {v4, v5, v6, v7}, Landroid/hardware/lights/Light;-><init>(III)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v3    # "hwLight":Landroid/hardware/light/HwLight;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    return-object v1

    .line 137
    .end local v1    # "lights":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$openSession$0$LightsService$LightsManagerBinderService(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->closeSessionInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public openSession(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 182
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string/jumbo v2, "openSession requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "already registered"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    new-instance v1, Lcom/android/server/lights/-$$Lambda$LightsService$LightsManagerBinderService$8FmNnEggUQUk5aNo2TKU1g6SMDA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/lights/-$$Lambda$LightsService$LightsManagerBinderService$8FmNnEggUQUk5aNo2TKU1g6SMDA;-><init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 190
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    new-instance v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    invoke-direct {v2, p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;-><init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    nop

    .line 195
    :try_start_2
    monitor-exit v0

    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LightsService"

    const-string v3, "Couldn\'t open session, client already died"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Client is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v2

    .line 195
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "lightIds"    # [I
    .param p3, "lightStates"    # [Landroid/hardware/lights/LightState;

    .line 149
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string/jumbo v2, "setLightStates requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    .line 155
    .local v1, "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    const-string/jumbo v3, "not registered"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 157
    invoke-direct {p0, p2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->checkRequestIsValid([I)V

    .line 159
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 160
    aget v3, p2, v2

    aget-object v4, p3, v2

    invoke-virtual {v1, v3, v4}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->setRequest(ILandroid/hardware/lights/LightState;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    .line 163
    .end local v1    # "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
