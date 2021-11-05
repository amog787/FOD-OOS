.class public final synthetic Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;

    invoke-direct {v0}, Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;-><init>()V

    sput-object v0, Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;->INSTANCE:Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;

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

    invoke-static {}, Lcom/android/server/pm/parsing/PackageParser2;->forParsingFileWithDefaults()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v0

    return-object v0
.end method
