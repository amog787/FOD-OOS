.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;

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

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->lambda$getStaticOverlayPackages$0(Landroid/content/pm/PackageParser$Package;)I

    move-result p1

    return p1
.end method
