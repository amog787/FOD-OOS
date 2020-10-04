.class public final synthetic Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/AppErrors;

.field private final synthetic f$1:Landroid/app/ApplicationErrorReport$CrashInfo;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I

.field private final synthetic f$4:Lcom/android/server/am/ProcessRecord;

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:Ljava/lang/String;

.field private final synthetic f$7:Ljava/lang/String;

.field private final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$0:Lcom/android/server/am/AppErrors;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$1:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$3:I

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$4:Lcom/android/server/am/ProcessRecord;

    iput-object p6, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$7:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$0:Lcom/android/server/am/AppErrors;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$1:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$3:I

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$4:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$7:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;->f$8:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppErrors;->lambda$handleAppCrashInActivityController$1$AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
