.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w;

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

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$5(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I

    move-result p1

    return p1
.end method
