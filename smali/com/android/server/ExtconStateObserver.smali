.class public abstract Lcom/android/server/ExtconStateObserver;
.super Lcom/android/server/ExtconUEventObserver;
.source "ExtconStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/ExtconUEventObserver;"
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExtconStateObserver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lcom/android/server/ExtconStateObserver;, "Lcom/android/server/ExtconStateObserver<TS;>;"
    invoke-direct {p0}, Lcom/android/server/ExtconUEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .param p1, "extconInfo"    # Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .param p2, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 55
    .local p0, "this":Lcom/android/server/ExtconStateObserver;, "Lcom/android/server/ExtconStateObserver<TS;>;"
    const-string v0, "NAME"

    invoke-virtual {p2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "name":Ljava/lang/String;
    const-string v1, "STATE"

    invoke-virtual {p2, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ExtconStateObserver;->parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "state":Ljava/lang/Object;, "TS;"
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/ExtconStateObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method public abstract parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation
.end method

.method public parseStateFromFile(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Ljava/lang/Object;
    .locals 4
    .param p1, "extconInfo"    # Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/server/ExtconStateObserver;, "Lcom/android/server/ExtconStateObserver<TS;>;"
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "statePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ExtconStateObserver;->parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public abstract updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ExtconUEventObserver$ExtconInfo;",
            "Ljava/lang/String;",
            "TS;)V"
        }
    .end annotation
.end method
