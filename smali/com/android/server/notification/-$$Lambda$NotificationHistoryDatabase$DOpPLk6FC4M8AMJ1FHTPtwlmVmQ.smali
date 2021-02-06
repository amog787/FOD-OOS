.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;

    invoke-direct {v0}, Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->lambda$indexFilesLocked$0(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
