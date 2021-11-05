.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareValidation"


# instance fields
.field private mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

.field private mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
    .param p2, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 138
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 139
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    .line 112
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    return-object v0
.end method

.method static handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 160
    instance-of v0, p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/ServiceSpecificException;

    move-object v1, p0

    check-cast v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    iget v1, v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;->errorCode:I

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x5

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This implementation is not inteded to be used directly with Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 3
    .param p1, "handle"    # I
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 197
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 199
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 214
    :try_start_1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    .line 216
    .local v0, "moduleService":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v1, p1, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    monitor-exit p0

    return-object v0

    .line 218
    .end local v0    # "moduleService":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .end local p1    # "handle":I
    .end local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    throw v1

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .restart local p1    # "handle":I
    .restart local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .end local p1    # "handle":I
    .end local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    throw v0

    .line 205
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .restart local p1    # "handle":I
    .restart local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must call listModules() prior to attaching."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .end local p1    # "handle":I
    .end local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    throw v0

    .line 221
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .restart local p1    # "handle":I
    .restart local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method checkPermissions()V
    .locals 1

    .line 253
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->enforcePermission(Ljava/lang/String;)V

    .line 254
    const-string v0, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->enforcePermission(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 291
    .local v0, "captureState":Ljava/lang/Boolean;
    const-string v1, "Capture state is %s\n\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v4, "uninitialized"

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "active"

    goto :goto_0

    :cond_1
    const-string v4, "inactive"

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 291
    invoke-virtual {p1, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 293
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 295
    .local v3, "handle":I
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    .line 296
    .local v4, "module":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;
    const-string v6, "========================================="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    const-string v6, "Module %d\n%s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    const/16 v9, 0x10

    .line 298
    invoke-static {v8, v2, v9}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;ZI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 297
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    const-string v6, "========================================="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    iget-object v6, v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;

    .line 301
    .local v7, "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    invoke-virtual {v7, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->dump(Ljava/io/PrintWriter;)V

    .line 302
    .end local v7    # "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    goto :goto_2

    .line 303
    .end local v3    # "handle":I
    .end local v4    # "module":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;
    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_3

    .line 305
    :cond_4
    const-string v1, "Modules have not yet been enumerated."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    .end local v0    # "captureState":Ljava/lang/Boolean;
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 310
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_5

    .line 311
    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    .line 313
    :cond_5
    return-void

    .line 307
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method enforcePermission(Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "status":I
    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Caller must have the %s permission."

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 269
    return-void

    .line 277
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected perimission check result."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 272
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_2
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v5, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 275
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 9

    .line 173
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 176
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    .line 182
    .local v0, "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    .line 183
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 184
    .local v3, "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    iget v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v7, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$1;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    nop

    .end local v3    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    :try_start_1
    monitor-exit p0

    return-object v0

    .line 190
    .end local v0    # "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    throw v1

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCaptureState(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->setCaptureState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 238
    nop

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .end local p1    # "active":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .restart local p1    # "active":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mCaptureState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 238
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
