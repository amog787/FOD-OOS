.class public final synthetic Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->sum(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
