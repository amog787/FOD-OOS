.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;

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

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->lambda$preRebootVerification$2(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    return p1
.end method
