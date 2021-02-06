.class public interface abstract Lcom/android/server/media/MediaSessionRecordImpl;
.super Ljava/lang/Object;
.source "MediaSessionRecordImpl.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
.end method

.method public abstract checkPlaybackActiveState(Z)Z
.end method

.method public abstract close()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSessionPolicies()I
.end method

.method public abstract getUid()I
.end method

.method public abstract getUserId()I
.end method

.method public abstract isActive()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isPlaybackTypeLocal()Z
.end method

.method public abstract isSystemPriority()Z
.end method

.method public abstract sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
.end method

.method public abstract setSessionPolicies(I)V
.end method
