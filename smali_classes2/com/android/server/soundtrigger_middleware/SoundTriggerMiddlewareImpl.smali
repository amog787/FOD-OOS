.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareImpl.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareImpl"


# instance fields
.field private final mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .locals 2
    .param p1, "factory"    # Lcom/android/server/soundtrigger_middleware/HalFactory;
    .param p2, "audioSessionProvider"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/soundtrigger_middleware/HalFactory;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;-><init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    .line 104
    return-void
.end method

.method public constructor <init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .locals 5
    .param p1, "halFactories"    # [Lcom/android/server/soundtrigger_middleware/HalFactory;
    .param p2, "audioSessionProvider"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 89
    :try_start_0
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    aget-object v3, p1, v1

    invoke-direct {v2, v3, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;-><init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SoundTriggerMiddlewareImpl"

    const-string v4, "Failed to add a SoundTriggerModule instance"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 96
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This implementation is not inteded to be used directly with Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 1
    .param p1, "handle"    # I
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 123
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v0

    return-object v0
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 111
    .local v0, "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 112
    new-instance v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    invoke-direct {v2}, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;-><init>()V

    .line 113
    .local v2, "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    iput v1, v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    .line 114
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->getProperties()Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    move-result-object v3

    iput-object v3, v2, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    .line 115
    aput-object v2, v0, v1

    .line 111
    .end local v2    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public setCaptureState(Z)V
    .locals 4
    .param p1, "active"    # Z

    .line 128
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;->mModules:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    .local v3, "module":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
    invoke-virtual {v3, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->setExternalCaptureState(Z)V

    .line 128
    .end local v3    # "module":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
