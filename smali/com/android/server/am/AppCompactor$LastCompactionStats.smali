.class final Lcom/android/server/am/AppCompactor$LastCompactionStats;
.super Ljava/lang/Object;
.source "AppCompactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LastCompactionStats"
.end annotation


# instance fields
.field private final mRssAfterCompaction:[J


# direct methods
.method constructor <init>([J)V
    .locals 0
    .param p1, "rss"    # [J

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$LastCompactionStats;->mRssAfterCompaction:[J

    .line 515
    return-void
.end method


# virtual methods
.method getRssAfterCompaction()[J
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/server/am/AppCompactor$LastCompactionStats;->mRssAfterCompaction:[J

    return-object v0
.end method
