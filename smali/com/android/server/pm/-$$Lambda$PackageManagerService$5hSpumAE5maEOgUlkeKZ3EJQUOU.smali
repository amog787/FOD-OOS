.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$5hSpumAE5maEOgUlkeKZ3EJQUOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$5hSpumAE5maEOgUlkeKZ3EJQUOU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5hSpumAE5maEOgUlkeKZ3EJQUOU;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5hSpumAE5maEOgUlkeKZ3EJQUOU;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5hSpumAE5maEOgUlkeKZ3EJQUOU;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$5hSpumAE5maEOgUlkeKZ3EJQUOU;

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

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->lambda$unsuspendForNonSystemSuspendingPackages$12(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
