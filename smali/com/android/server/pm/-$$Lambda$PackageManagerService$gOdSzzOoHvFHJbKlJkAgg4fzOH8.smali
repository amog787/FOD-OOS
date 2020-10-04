.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$gOdSzzOoHvFHJbKlJkAgg4fzOH8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$gOdSzzOoHvFHJbKlJkAgg4fzOH8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gOdSzzOoHvFHJbKlJkAgg4fzOH8;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gOdSzzOoHvFHJbKlJkAgg4fzOH8;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gOdSzzOoHvFHJbKlJkAgg4fzOH8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$gOdSzzOoHvFHJbKlJkAgg4fzOH8;

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

    check-cast p1, Landroid/content/pm/ProviderInfo;

    check-cast p2, Landroid/content/pm/ProviderInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$static$8(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    move-result p1

    return p1
.end method
