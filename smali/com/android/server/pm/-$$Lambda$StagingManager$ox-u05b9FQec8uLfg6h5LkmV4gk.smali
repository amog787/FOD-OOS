.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->lambda$submitSessionToApexService$0(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result p1

    return p1
.end method
