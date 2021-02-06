.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$4cqrQoT4gMgFm-tugMOyoExM1kI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$4cqrQoT4gMgFm-tugMOyoExM1kI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4cqrQoT4gMgFm-tugMOyoExM1kI;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4cqrQoT4gMgFm-tugMOyoExM1kI;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4cqrQoT4gMgFm-tugMOyoExM1kI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$4cqrQoT4gMgFm-tugMOyoExM1kI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/pm/SharedLibraryInfo;

    check-cast p2, Landroid/content/pm/SharedLibraryInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$executeSharedLibrariesUpdateLPr$15(Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;)V

    return-void
.end method
