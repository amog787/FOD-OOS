.class Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryUsageDumpOptions"
.end annotation


# instance fields
.field dumpDalvik:Z

.field dumpDetails:Z

.field dumpFullDetails:Z

.field dumpProto:Z

.field dumpSummaryOnly:Z

.field dumpSwapPss:Z

.field dumpUnreachable:Z

.field isCheckinRequest:Z

.field isCompact:Z

.field localOnly:Z

.field oomOnly:Z

.field packages:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService$1;

    .line 13816
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;-><init>()V

    return-void
.end method
