.class public abstract Lcom/android/server/ExtconUEventObserver;
.super Landroid/os/UEventObserver;
.source "ExtconUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static final SELINUX_POLICIES_NEED_TO_BE_CHANGED:Ljava/lang/String; = "This probably means the selinux policies need to be changed."

.field private static final TAG:Ljava/lang/String; = "ExtconUEventObserver"


# instance fields
.field private final mExtconInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    return-void
.end method

.method public static extconExists()Z
    .locals 2

    .line 170
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/extcon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "extconDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static namedExtconDirExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/extcon/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "extconDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 58
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "devPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 60
    .local v1, "info":Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v1, p1}, Lcom/android/server/ExtconUEventObserver;->onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No match found for DEVPATH of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtconUEventObserver"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void
.end method

.method protected abstract onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
.end method

.method public startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V
    .locals 3
    .param p1, "extconInfo"    # Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 77
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "devicePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start observing  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because the device path is null. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "This probably means the selinux policies need to be changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtconUEventObserver"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVPATH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ExtconUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void
.end method
