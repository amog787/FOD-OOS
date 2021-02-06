.class public final synthetic Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->isNonToastWindowVisibleForUid(I)Z

    move-result p1

    return p1
.end method
