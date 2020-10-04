.class Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
.super Lcom/android/internal/app/ISoundTriggerService$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundTriggerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 158
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 244
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)Z

    .line 255
    return-void
.end method

.method public getModelState(Landroid/os/ParcelUuid;)I
    .locals 7
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 540
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 541
    const/high16 v0, -0x80000000

    .line 542
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModelState(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModelState(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 550
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 552
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_1

    .line 553
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModelState(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 558
    monitor-exit v1

    return v0

    .line 560
    :cond_1
    iget v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 566
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported model type, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModelState(): Unsupported model type, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    goto :goto_0

    .line 562
    :cond_2
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    move-result v3

    move v0, v3

    .line 563
    nop

    .line 573
    :goto_0
    monitor-exit v1

    return v0

    .line 574
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 4
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 216
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 226
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    return-object v0
.end method

.method public isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 527
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 531
    .local v2, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-nez v2, :cond_1

    .line 532
    monitor-exit v0

    return v1

    .line 534
    .end local v2    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionRequested(Ljava/util/UUID;)Z

    move-result v0

    return v0

    .line 534
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 259
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 261
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadGenericSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadGenericSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 281
    .local v1, "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    .line 283
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :try_start_2
    throw v3

    .line 287
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    nop

    .end local v1    # "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    monitor-exit v0

    .line 289
    const/4 v0, 0x0

    return v0

    .line 288
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 262
    :cond_3
    :goto_1
    const-string v0, "SoundTriggerService"

    const-string v2, "Invalid sound model"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v3, "loadGenericSoundModel(): Invalid sound model"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 267
    return v1
.end method

.method public loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .locals 6
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 294
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 296
    :cond_0
    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 304
    :cond_1
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadKeyphraseSoundModel(): id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 325
    .local v1, "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    .line 327
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :try_start_1
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_start_2
    throw v2

    .line 331
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    nop

    .end local v1    # "oldModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    monitor-exit v0

    .line 333
    return v2

    .line 332
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 305
    :cond_4
    :goto_1
    const-string v0, "SoundTriggerService"

    const-string v2, "Only one keyphrase per model is currently supported."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v3, "loadKeyphraseSoundModel(): Only one keyphrase per model is currently supported."

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 311
    return v1

    .line 297
    :cond_5
    :goto_2
    const-string v0, "SoundTriggerService"

    const-string v2, "Invalid sound model"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v3, "loadKeyphraseSoundModel(): Invalid sound model"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 302
    return v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 168
    const-string v1, "SoundTriggerService"

    const-string v2, "SoundTriggerService Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_0
    throw v0
.end method

.method public startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 6
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p3, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 177
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognition(): Uuid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 187
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    if-nez v0, :cond_1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null model in database for id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecognition(): Null model in database for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 193
    return v1

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v1

    return v1
.end method

.method public startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 11
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "detectionService"    # Landroid/content/ComponentName;
    .param p4, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 339
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognition(): id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecognitionForService(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 353
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 354
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 355
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    move-object v4, v0

    move-object v7, p2

    move-object v8, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 357
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 358
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 359
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v3, :cond_1

    .line 360
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startRecognitionForService():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 365
    monitor-exit v2

    return v1

    .line 367
    :cond_1
    const/4 v4, 0x0

    .line 368
    .local v4, "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v5}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 369
    :try_start_1
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v6}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-object v4, v6

    .line 370
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    if-eqz v4, :cond_2

    .line 372
    :try_start_2
    const-string v5, "SoundTriggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is already running"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRecognitionForService():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is already running"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 378
    monitor-exit v2

    return v1

    .line 381
    :cond_2
    iget v5, v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 387
    const-string v5, "SoundTriggerService"

    const-string v6, "Unknown model type"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v7, "startRecognitionForService(): Unknown model type"

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 392
    monitor-exit v2

    return v1

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v5, v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    move-object v6, v3

    check-cast v6, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-virtual {v1, v5, v6, v0, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v1

    .line 385
    .local v1, "ret":I
    nop

    .line 395
    if-eqz v1, :cond_4

    .line 396
    const-string v5, "SoundTriggerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v7, "startRecognitionForService(): Failed to start model:"

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 401
    monitor-exit v2

    return v1

    .line 403
    :cond_4
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v5}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 404
    :try_start_3
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v6}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    .end local v1    # "ret":I
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v4    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 407
    const/4 v1, 0x0

    return v1

    .line 405
    .restart local v1    # "ret":I
    .restart local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local v4    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "detectionService":Landroid/content/ComponentName;
    .end local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 370
    .end local v1    # "ret":I
    .restart local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "detectionService":Landroid/content/ComponentName;
    .restart local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "detectionService":Landroid/content/ComponentName;
    .end local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_start_8
    throw v1

    .line 406
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v4    # "existingCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "detectionService":Landroid/content/ComponentName;
    .restart local p4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4
    .param p1, "parcelUuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 202
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecognition(): Uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v0

    return v0
.end method

.method public stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .locals 8
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 412
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecognition(): id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognitionForService(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 423
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_1

    .line 424
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopRecognitionForService(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 430
    monitor-exit v0

    return v1

    .line 432
    :cond_1
    const/4 v3, 0x0

    .line 433
    .local v3, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 434
    :try_start_1
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v5}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-object v3, v5

    .line 435
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    if-nez v3, :cond_2

    .line 437
    :try_start_2
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopRecognitionForService(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not running"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 443
    monitor-exit v0

    return v1

    .line 446
    :cond_2
    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 451
    const-string v4, "SoundTriggerService"

    const-string v5, "Unknown model type"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v6, "stopRecognitionForService(): Unknown model type"

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 456
    monitor-exit v0

    return v1

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 449
    .local v1, "ret":I
    nop

    .line 459
    if-eqz v1, :cond_4

    .line 460
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopRecognitionForService(): Failed to stop model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 465
    monitor-exit v0

    return v1

    .line 467
    :cond_4
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v4}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 468
    :try_start_3
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v5}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    .end local v1    # "ret":I
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v3    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 471
    const/4 v0, 0x0

    return v0

    .line 469
    .restart local v1    # "ret":I
    .restart local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .restart local v3    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 435
    .end local v1    # "ret":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .end local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :try_start_8
    throw v1

    .line 470
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .end local v3    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    .restart local p1    # "soundModelId":Landroid/os/ParcelUuid;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public unloadSoundModel(Landroid/os/ParcelUuid;)I
    .locals 7
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;

    .line 476
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unloadSoundModel(): id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadSoundModel(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 487
    .local v2, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    if-nez v2, :cond_1

    .line 488
    const-string v3, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unloadSoundModel(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 493
    monitor-exit v0

    return v1

    .line 496
    :cond_1
    iget v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 505
    const-string v3, "SoundTriggerService"

    const-string v4, "Unknown model type"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v5, "unloadSoundModel(): Unknown model type"

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 510
    monitor-exit v0

    return v1

    .line 502
    :cond_2
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v1

    .line 503
    .local v1, "ret":I
    goto :goto_0

    .line 498
    .end local v1    # "ret":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v1

    .line 500
    .restart local v1    # "ret":I
    nop

    .line 512
    :goto_0
    if-eqz v1, :cond_4

    .line 513
    const-string v3, "SoundTriggerService"

    const-string v4, "Failed to unload model"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string/jumbo v5, "unloadSoundModel(): Failed to unload model"

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 518
    monitor-exit v0

    return v1

    .line 520
    :cond_4
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    monitor-exit v0

    return v4

    .line 522
    .end local v1    # "ret":I
    .end local v2    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .locals 4
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 231
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSoundModel(): model = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z

    .line 240
    return-void
.end method
