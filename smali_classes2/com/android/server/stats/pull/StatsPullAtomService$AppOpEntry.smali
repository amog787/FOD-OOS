.class Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppOpEntry"
.end annotation


# instance fields
.field public final mAttributionTag:Ljava/lang/String;

.field public final mHash:I

.field public final mOp:Landroid/app/AppOpsManager$HistoricalOp;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p5, "uid"    # I

    .line 3403
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3404
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    .line 3405
    iput-object p3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    .line 3406
    iput p5, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    .line 3407
    iput-object p4, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3408
    invoke-virtual {p4}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3c1

    .line 3409
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr p1, v0

    .line 3410
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5800()I

    move-result v0

    add-int/2addr p1, v0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    .line 3411
    return-void
.end method
