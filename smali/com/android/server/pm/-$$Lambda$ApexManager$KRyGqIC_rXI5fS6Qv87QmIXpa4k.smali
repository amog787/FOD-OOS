.class public final synthetic Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;

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

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/android/server/pm/ApexManager;->lambda$getFactoryPackages$1(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method
