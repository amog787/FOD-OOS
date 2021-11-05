.class public final synthetic Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$ZALqJ5zffMRDKqItoRucSmvbPjQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$ZALqJ5zffMRDKqItoRucSmvbPjQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$ZALqJ5zffMRDKqItoRucSmvbPjQ;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$ZALqJ5zffMRDKqItoRucSmvbPjQ;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$ZALqJ5zffMRDKqItoRucSmvbPjQ;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$ZALqJ5zffMRDKqItoRucSmvbPjQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/server/people/data/EventList;

    invoke-static {p1, p2}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->lambda$protoStreamWriter$0(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/people/data/EventList;)V

    return-void
.end method
