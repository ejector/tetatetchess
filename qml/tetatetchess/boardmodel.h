#ifndef BOARDMODEL_H
#define BOARDMODEL_H

#include <QAbstractListModel>

class QVariant;

class Figure: public QAbstractItemModel
{

};

class BoardModel : public QAbstractListModel
{
    Q_OBJECT
public:
    const int BOARD_SIZE;
public:
    explicit BoardModel(QObject *parent = 0);

    int rowCount(const QModelIndex &parent) const;
    QVariant BoardModel::data(const QModelIndex &index, int role) const;

signals:

public slots:

};

#endif // BOARDMODEL_H
