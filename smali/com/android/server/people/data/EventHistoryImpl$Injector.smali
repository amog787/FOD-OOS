.class Lcom/android/server/people/data/EventHistoryImpl$Injector;
.super Ljava/lang/Object;
.source "EventHistoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/EventHistoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createEventIndex()Lcom/android/server/people/data/EventIndex;
    .locals 1

    .line 220
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    return-object v0
.end method

.method currentTimeMillis()J
    .locals 2

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
