.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->lambda$removeAllNonSystemPackageSuspensions$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
