.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    }
.end annotation


# instance fields
.field final description:Ljava/lang/String;

.field private mActivityState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private parameterSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/soundtrigger_middleware/ModelParameterRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)V
    .locals 2
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->mActivityState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    .line 322
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;ZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->description:Ljava/lang/String;

    .line 323
    return-void
.end method

.method constructor <init>(Landroid/media/soundtrigger_middleware/SoundModel;)V
    .locals 2
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/SoundModel;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->mActivityState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    .line 318
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;ZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->description:Ljava/lang/String;

    .line 319
    return-void
.end method


# virtual methods
.method checkSupported(I)V
    .locals 3
    .param p1, "modelParam"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;

    .line 356
    .local v0, "range":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    if-eqz v0, :cond_0

    .line 359
    return-void

    .line 357
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Paramater is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    .end local v0    # "range":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parameter has not been checked for support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkSupported(II)V
    .locals 4
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;

    .line 373
    .local v0, "range":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    if-eqz v0, :cond_0

    .line 376
    iget v1, v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->minInclusive:I

    iget v2, v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->maxInclusive:I

    const-string v3, "value"

    invoke-static {p2, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 378
    return-void

    .line 374
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Paramater is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    .end local v0    # "range":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parameter has not been checked for support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getActivityState()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    .locals 2

    .line 391
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->mActivityState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method setActivityState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 395
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->mActivityState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 396
    return-void
.end method

.method updateParameterSupport(ILandroid/media/soundtrigger_middleware/ModelParameterRange;)V
    .locals 2
    .param p1, "modelParam"    # I
    .param p2, "range"    # Landroid/media/soundtrigger_middleware/ModelParameterRange;

    .line 387
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->parameterSupport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void
.end method
