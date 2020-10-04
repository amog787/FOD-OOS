.class Lcom/android/server/usage/UsageStatsService$ActivityData;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityData"
.end annotation


# instance fields
.field private final mTaskRootClass:Ljava/lang/String;

.field private final mTaskRootPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "taskRootPackage"    # Ljava/lang/String;
    .param p2, "taskRootClass"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/usage/UsageStatsService$1;

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 160
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 160
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    return-object v0
.end method
