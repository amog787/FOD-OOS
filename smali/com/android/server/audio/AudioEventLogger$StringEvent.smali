.class public Lcom/android/server/audio/AudioEventLogger$StringEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringEvent"
.end annotation


# instance fields
.field private final mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/audio/AudioEventLogger$StringEvent;->mMsg:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger$StringEvent;->mMsg:Ljava/lang/String;

    return-object v0
.end method
