.class public final synthetic Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method
