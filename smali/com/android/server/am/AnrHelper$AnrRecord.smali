.class Lcom/android/server/am/AnrHelper$AnrRecord;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AnrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnrRecord"
.end annotation


# instance fields
.field final mAboveSystem:Z

.field final mActivityShortComponentName:Ljava/lang/String;

.field final mAnnotation:Ljava/lang/String;

.field final mApp:Lcom/android/server/am/ProcessRecord;

.field final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field final mParentProcess:Lcom/android/server/wm/WindowProcessController;

.field final mParentShortComponentName:Ljava/lang/String;

.field final mTimestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .locals 2
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p6, "aboveSystem"    # Z
    .param p7, "annotation"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    .line 127
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 128
    iput-object p2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    .line 130
    iput-object p7, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAnnotation:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    iput-object p5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    .line 133
    iput-boolean p6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    .line 134
    return-void
.end method


# virtual methods
.method appNotResponding(Z)V
    .locals 8
    .param p1, "onlyDumpSelf"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    iget-object v6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAnnotation:Ljava/lang/String;

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;Z)V

    .line 140
    return-void
.end method
