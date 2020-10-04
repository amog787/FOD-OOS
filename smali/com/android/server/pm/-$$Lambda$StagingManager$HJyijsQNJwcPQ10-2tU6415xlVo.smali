.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->lambda$sessionContainsApex$5(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    return p1
.end method
