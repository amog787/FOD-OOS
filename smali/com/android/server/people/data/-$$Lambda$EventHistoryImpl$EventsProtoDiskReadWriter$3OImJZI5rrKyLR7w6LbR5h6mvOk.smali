.class public final synthetic Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$3OImJZI5rrKyLR7w6LbR5h6mvOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$3OImJZI5rrKyLR7w6LbR5h6mvOk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$3OImJZI5rrKyLR7w6LbR5h6mvOk;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$3OImJZI5rrKyLR7w6LbR5h6mvOk;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$3OImJZI5rrKyLR7w6LbR5h6mvOk;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$3OImJZI5rrKyLR7w6LbR5h6mvOk;

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

    invoke-static {p1}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventList;

    move-result-object p1

    return-object p1
.end method
