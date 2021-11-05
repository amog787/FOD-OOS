.class public final synthetic Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;->INSTANCE:Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Svc6Ot6mP20gZxXqsV5RuSFu1Lk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$0()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method
