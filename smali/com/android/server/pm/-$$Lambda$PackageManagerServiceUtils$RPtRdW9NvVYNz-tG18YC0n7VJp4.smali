.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4;

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

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$static$0(Lcom/android/server/pm/PackageSetting;)Z

    move-result p1

    return p1
.end method
