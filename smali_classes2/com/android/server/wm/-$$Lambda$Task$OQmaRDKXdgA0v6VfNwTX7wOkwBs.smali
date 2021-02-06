.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/Task;->lambda$OQmaRDKXdgA0v6VfNwTX7wOkwBs(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
