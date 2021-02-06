.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final mRss:J

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field

.field final swapPss:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJI)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "shortLabel"    # Ljava/lang/String;
    .param p3, "pss"    # J
    .param p5, "swapPss"    # J
    .param p7, "rss"    # J
    .param p9, "id"    # I

    .line 14547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14549
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 14550
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 14551
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 14552
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 14553
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 14554
    iput p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 14555
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 14556
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJIZ)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "shortLabel"    # Ljava/lang/String;
    .param p3, "pss"    # J
    .param p5, "swapPss"    # J
    .param p7, "rss"    # J
    .param p9, "id"    # I
    .param p10, "hasActivities"    # Z

    .line 14536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14538
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 14539
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 14540
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 14541
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 14542
    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    .line 14543
    iput p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 14544
    iput-boolean p10, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 14545
    return-void
.end method
