.class Lcom/android/server/wm/WindowContainer$RemoteToken;
.super Landroid/window/IWindowContainerToken$Stub;
.source "WindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteToken"
.end annotation


# instance fields
.field final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowContainerToken:Landroid/window/WindowContainerToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 2808
    invoke-direct {p0}, Landroid/window/IWindowContainerToken$Stub;-><init>()V

    .line 2809
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 2810
    return-void
.end method

.method static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer$RemoteToken;
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 2817
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    return-object v0
.end method


# virtual methods
.method getContainer()Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 2813
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2830
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RemoteToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2833
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2834
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2835
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toWindowContainerToken()Landroid/window/WindowContainerToken;
    .locals 1

    .line 2821
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    .line 2822
    new-instance v0, Landroid/window/WindowContainerToken;

    invoke-direct {v0, p0}, Landroid/window/WindowContainerToken;-><init>(Landroid/window/IWindowContainerToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    .line 2824
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    return-object v0
.end method
